# Testing Rules

## Coverage Standard

**80% minimum test coverage** across branches, functions, lines, and statements.

## Required Test Types

All three must be present:

1. **Unit tests** — isolated functions and components with edge cases
2. **Integration tests** — API endpoints and database interactions
3. **E2E tests** — critical user workflows (Playwright)

## TDD Workflow

1. Write test first (RED) — run it, confirm it fails
2. Write minimal implementation (GREEN) — run tests, confirm pass
3. Refactor for quality
4. Verify coverage stays at 80%+

## Key Rules

- Fix implementation, not tests (unless tests are wrong)
- Test what users see, not internal implementation details
- Tests must be independent — no shared state between them
- Mock external dependencies (databases, APIs), not internal logic

## Support

- Use the `tdd-guide` agent for new features (proactive TDD enforcement)
- Use the `e2e-runner` agent for Playwright-based end-to-end testing
