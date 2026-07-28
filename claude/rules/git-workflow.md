# Git Workflow

## Commit Message Format

```
<type>: <description>

<optional body>
```

Types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `perf`, `ci`

## Pull Request Workflow

When creating PRs:
1. Analyze full commit history (not just latest commit)
2. Use `git diff [base-branch]...HEAD` to see all changes
3. Draft comprehensive PR summary
4. Include test plan with TODOs
5. Push with `-u` flag if new branch

## Feature Implementation Workflow

1. **Plan First** — use the `planner` agent to create an implementation plan
2. **TDD Approach** — use the `tdd-guide` agent: write tests first, implement, refactor
3. **Code Review** — use the `code-reviewer` agent immediately after writing code; address CRITICAL and HIGH issues before committing
4. **Commit & Push** — detailed commit messages, conventional commits format
