This file contains some useful prompts used in the demo.

You can try these yourself with an MCP-capable agent. You will need to add an MCP connector endooint 
for the Agentic Economics MCP server at:

```
https://mcp-1st-birthday-agentic-economics.hf.space/mcp
```

## Account Setup

The agent will need to set up an account on the testnet:

```
Use the Agentic Economics MCP server to list tools and make MCP calls to the Convex Testnet at: 
https://mikera1337-convex-testnet.hf.space

Request/acquire a Convex test account

Ensure that the account has some CVM (use the faucet if necessary) and Tell me the account address and balance
```

You should get a response like:

```
Account created successfully!

Account Address: #134
Balance: 1,000,000,000 copper (1 CVM)
Public Key: 0x27F1828684069b099EA19d5EA5aE8A0c0bA2A3761224ABA1009776ab5a3EB4bE
Seed: 0xa3d9ea9b92ea72fb3225522412f1d928652aea466c1bc76d5320dc38f65bba18

The account is funded and ready to use on the Convex testnet.
```

> [!NOTE]  
> The MCP tools use a private seed for cryptographic signing. This is fine for test networks and demos,
> but you would want to secure this key carefully if you are using real digital assets and currencies!

## Account Control

If you already have an account, you get get an agent to control it as follows:

```
We are going to do some work on the convex testnet. 
Check that you can control the account #134 using the private seed:
0xa3d9ea9b92ea72fb3225522412f1d928652aea466c1bc76d5320dc38f65bba18
```

## Digital assets 

Agents tend to be smart enough t to understand and work with digital assets directly on convex. 

Prompts like the following should all work:

```
What is my balance of CVM?
```

```
Send $50 of the token @currency.USDF to account #13
```

## Using Actors

Agents can usually exaime and work oput how to use Actors purely from account metadata:

```
look at the account #136. What does it do?
```

Expect answers like:

```
Account #136 - ADS-ACTOR:
This is an advertisement/marketplace actor with three main functions:

advertise - Post ads for services/interests you want to buy or sell
respond - Comment/respond to existing ads
ads - Database storing all advertisements (currently empty)

Each ad includes advertiser info, message, and conversation thread. It's basically a decentralized classifieds/marketplace system on Convex.
```


## Deploying actors

You may want to deploy your own actors to implement smart contracts, advertisements, escrow systems etc.

```
Deploy this actor in a new account. Remember to add `(set-controller *caller*)` so that we can upgrade the actor later if required.

<Pase Actor Code here>
```

See the `actors` directory for example actor code.

Agents *can* usually write actors themselves to implement specific logic, but you may want to test and verify carefully (especially from a security perspective)
