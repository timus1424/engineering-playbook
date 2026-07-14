# Subscription Autopsy 

## Audit

Status:
- Runs locally with pnpm
- Expo verified
- Android verified
- Ready for development

## Current Architecture

Frontend
↓
Expo
↓
Expo Router
↓
React Context
↓
AsyncStorage
↓
(No backend calls currently)

## Investigation

### Authentication

Where is auth stored?
-> Auth is stored in app, and there's also a file AuthContext.tsx

How is session restored?
-> AsyncStorage

Can auth be removed?
-> Yes. Authentication is currently implemented using AuthContext. Since the application stores subscription data locally, guest mode is technically possible. Authentication should become optional rather than mandatory.

Can guest mode exist?
->Yes. This is planned for Version 2. Guest mode becomes the default onboarding experience. Cloud sync will require authentication.

### Subscriptions

Where are subscriptions stored?
-> SubscriptionContext.tsx -> AsyncStorage

Who creates IDs?
-> Date.now() + Math.random()

How are renewals calculated?
-> Calculated locally bsaed on billing frequency. No backend required.

How is sorting done?
-> Currently handled in the client.

### AI

Where is AI called?
->Current status:
No production AI implementation. 
Only planned. 
No OpenAI. 
No Gemini. 
No Claude. 
Placeholder architecture only.

### Premium

Currently mocked.
No RevenueCat.
No StoreKit.
No Play Billing.
Premium flag stored locally.

## Backend

Express server exists.
No production API usage.
Mobile app performs zero network requests.
Backend currently scaffolded.

Future:
Supabase
Cloud Sync
AI
Notifications

---
