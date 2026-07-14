I don’t want Claude replacing files.

I want Claude acting like another senior engineer on our team.

There’s a huge difference.

Instead of saying

“Fix this file.”

I want us to say

“Here’s the problem. Propose a solution. Explain tradeoffs. Generate the implementation.”

Then we review it before merging.

That’s how you’ll learn architecture instead of becoming dependent on AI.

⸻

Here’s the workflow I’d like us to adopt

GitHub Issues
        ↓
Architecture discussion (ChatGPT)
        ↓
Implementation (Claude/Cursor)
        ↓
Review (ChatGPT)
        ↓
Merge
        ↓
Engineering Playbook

Notice something.

No AI is making the final decision.

You are.

That’s the skill we’re trying to build.

⸻

Before touching code

Professional projects start here.

Milestone v1 Cleanup

Create a milestone called

v1 Cleanup & Local Development

⸻

Then create these issues.

⸻

Issue 1 ⭐⭐⭐⭐⭐

Audit README

Current README no longer reflects the actual project.
Tasks
- Update installation instructions to pnpm
- Explain monorepo
- Update folder structure
- Add architecture diagram
- Remove outdated sections
- Add setup instructions
- Add development workflow

⸻

Issue 2 ⭐⭐⭐⭐⭐

Local Development

Get app running locally

Tasks

- Verify pnpm workspace
- Verify Expo starts
- Verify Android
- Verify iOS
- Verify Web

⸻

Issue 3 ⭐⭐⭐⭐

Document Architecture

Deliverable

docs/architecture.md

Include

* app flow
* folder structure
* state management
* storage
* future backend

⸻

Issue 4 ⭐⭐⭐⭐

Remove dead code

NOT yet.

Just identify.

Checklist

Unused components
Unused packages
Unused helper functions
Unused screens
Unused variables

Nothing deleted yet.

⸻

Issue 5 ⭐⭐⭐⭐⭐

Dependency cleanup

Again

Don’t delete.

Investigate.

Cursor found

* expo-image
* zod
* cookie-parser

etc.

Let’s verify each.

⸻

Issue 6 ⭐⭐⭐⭐⭐

Environment variables

Deliverables

.env.example
documentation
setup guide

⸻

Issue 7 ⭐⭐⭐⭐

Refactor duplicated logic

Cursor already found

Monthly calculations

Storage keys

ID generation

Constants

Perfect.

⸻

Issue 8 ⭐⭐⭐⭐⭐

Independent deployment

Research

Railway
Render
Supabase
Expo
GitHub Actions

⸻

Issue 9 ⭐⭐⭐⭐⭐

App Store Release Checklist

This becomes reusable.

Future apps will reuse it.

⸻

Issue 10 ⭐⭐⭐⭐⭐

Google Play Release Checklist

Same idea.

⸻

Here’s what I DON’T want

Don’t start deleting files because Cursor said

Unused

AI isn’t always right.

Example:

expo-image

might not be imported

today

but maybe tomorrow

the onboarding uses it.

Deleting it now creates unnecessary churn.

⸻
project-workflow.md
The engineering philosophy I want us to follow

Issue
̐|
Understand
↓
Verify
↓
Document
↓
Implement
↓
Test
↓
review
|
Merge

Notice

Documentation comes before implementation.

Very few people do that.

⸻

How we’ll use Claude

Instead of

Fix AuthContext

We’ll ask

Review AuthContext.tsx.
Find architectural problems.
Do not rewrite the entire file.
Suggest improvements ranked by impact.
Explain why each improves maintainability.
Wait for approval before generating code.

That is an engineer’s prompt.

⸻

How we’ll use Cursor

Cursor becomes

Refactor
Rename
Move files
Generate tests
Navigate project

Not

Build my app.

⸻

My proposal for balancing the workload

Since you’re also doing the AWS internship, I’d split responsibilities:

🟦 My role (Architecture & Planning)

* Decide priorities.
* Break work into milestones and issues.
* Review AI-generated code.
* Help with debugging and design decisions.
* Make sure we don’t over-engineer or introduce regressions.

🟩 Claude/Cursor’s role (Implementation)

* Generate code for well-defined tasks.
* Refactor specific files.
* Explain existing code when needed.
* Automate repetitive edits.

🟨 Your role (Engineer)

* Own the repository.
* Run the code locally.
* Test every change.
* Commit with meaningful messages.
* Keep the Engineering Playbook updated with anything worth remembering.

That division lets you keep making progress on both your app and your internship without feeling like you’re constantly context-switching or manually editing hundreds of lines.

⸻

One thing I’d add before all of this

I’d create a GitHub Project (the newer Projects board, not the classic Projects).

Columns:

* 📥 Inbox
* 📝 Todo
* 🚧 In Progress
* 👀 Review
* ✅ Done

Then attach every issue we create to that board.

From now on, every app you build gets:

* a repository,
* a Project board,
* milestones,
* issues,
* documentation,
* and an Engineering Playbook entry when you learn something reusable.

That may sound like extra overhead today, but after your third or fourth app, it becomes the system that lets you build faster instead of starting from scratch each time.
