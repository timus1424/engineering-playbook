# GitHub CLI

## Login

```bash
gh auth login
```

---

## Status

```bash
gh auth status
```

---

## Create Issue

```bash
gh issue create \
  --title "..." \
  --body "..." \
  --label cleanup \
  --assignee @me
```

---

## Close Issue

```bash
gh issue close 4 \
  --comment "Completed..."
```

---

## List Issues

```bash
gh issue list
```

---

## View Issue

```bash
gh issue view 4
```

---

## Edit Issue

```bash
gh issue edit 4 \
  --add-label cleanup
```

---
