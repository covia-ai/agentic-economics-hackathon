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

Ensure that the account has some CVM (use the faucet if necessary) and Tell me the account address
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
We are going to do some work on the convex testnet. Check that you 
can control the account #134 by using the private seed 0xa3d9ea9b92ea72fb3225522412f1d928652aea466c1bc76d5320dc38f65bba18
```