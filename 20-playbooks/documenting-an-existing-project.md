# Documenting an Existing Project

## Goal

Understand a project before changing code.

## Workflow

1. Clone repository.
2. Install dependencies.
3. Understand workspace/package manager.
4. Create architecture document.
5. Identify current architecture.
6. Separate current implementation from future plans.
7. Only then start refactoring.

## Lessons Learned

- Architecture should describe reality, not future ideas.
- Explicitly list unimplemented features.
- Include data flow.
- Include storage flow.
- Include navigation flow.
- Include dependency map.
- Avoid copying README into architecture docs.

## Reusable Prompt

<
You are acting as a senior React Native engineer reviewing this Expo Router monorepo.

Do not modify any files.

Produce a concise architecture document describing:

* How the application starts
* Expo Router navigation structure
* Authentication flow
* Subscription data flow
* AsyncStorage usage
* Context providers
* Screen hierarchy
* Backend communication (if any)
* External dependencies currently in use
* Planned but currently unused architecture

Assume this document will be placed in docs/architecture.md.

Do not speculate.
If something isn’t implemented, clearly state that.

>
## Checklist

- [ ] Startup flow documented
- [ ] Navigation documented
- [ ] State management documented
- [ ] Storage documented
- [ ] External dependencies documented
- [ ] Future architecture separated
