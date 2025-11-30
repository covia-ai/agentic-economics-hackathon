# Docker for Covia Grid

##################################
# Clone stage

# Based on Eclipse temurin JDK, noble Ubuntu for git etc
FROM maven:3-eclipse-temurin-25-noble AS clone

WORKDIR /convex
RUN git clone --depth 1 --branch develop https://github.com/Convex-Dev/convex.git .

WORKDIR /covia
RUN git clone --depth 1 --branch master https://github.com/covia-ai/covia.git .


##################################
# Build stage

FROM maven:eclipse-temurin AS build

COPY --from=clone /convex /convex
COPY --from=clone /covia /covia


WORKDIR /convex
RUN --mount=type=cache,target=~/.m2 \
    mvn clean install
	
WORKDIR /covia
RUN --mount=type=cache,target=~/.m2 \
	mvn clean install

##################################
# Run stage

# We want a 25 JRE for runtime, slim image with alpine
FROM eclipse-temurin:25-jre-alpine AS run

WORKDIR /covia

COPY --from=build /covia/venue/target/covia.jar /covia/covia.jar

ADD config.json /covia/config.json

EXPOSE 7860

ENTRYPOINT ["java", "-jar", "/covia/covia.jar"]
CMD ["/covia/config.json"]