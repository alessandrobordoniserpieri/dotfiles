# Security Rules

## Mandatory Checks Before Every Commit

- [ ] No hardcoded secrets (API keys, passwords, tokens)
- [ ] All user inputs validated and sanitized
- [ ] SQL queries use parameterized statements
- [ ] HTML output escaped (XSS prevention)
- [ ] CSRF protection active
- [ ] Authentication and authorization verified on every endpoint
- [ ] Rate limiting in place on public endpoints
- [ ] Error messages don't expose internal details

## Secret Handling

```typescript
// NEVER
const apiKey = "sk-proj-xxxxx"

// ALWAYS
const apiKey = process.env.API_KEY
if (!apiKey) throw new Error('API_KEY not configured')
```

## Security Incident Protocol

If a security vulnerability is discovered:

1. Stop current work immediately
2. Invoke the `security-reviewer` agent
3. Resolve all CRITICAL issues before continuing
4. Rotate any exposed credentials
5. Audit related code sections
