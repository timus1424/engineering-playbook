# Before Removing Code

## 1. Search

```bash
rg "ComponentName"
```

---

## 2. Verify

- imports
- exports
- JSX
- require()

---

## 3. Delete

---

## 4. Typecheck

```bash
pnpm typecheck
```

---

## 5. Run App

```bash
pnpm --filter subscription-autopsy start
```

---

## 6. Manual Test

Open affected screens.

---

## 7. Commit

```text
refactor: remove unused ComponentName
```
---
