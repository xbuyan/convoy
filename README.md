# Convoy

A production-grade job queue written in Go — REST API for enqueuing work,
durable Postgres-backed storage, and a concurrent worker pool that executes
jobs reliably with retries, backoff, and dead-lettering.

Built as a learning project to move from Go fundamentals to production-level
systems engineering: project structure, error handling, concurrency, REST
APIs, interfaces, testing, and deployment.

## Status

🚧 Early development — schema and architecture in progress.

## Architecture

- `cmd/api` — REST API for submitting jobs and checking their status
- `cmd/worker` — worker pool that claims and executes jobs
- `internal/job` — core domain type + repository interface
- `internal/postgres` — Postgres implementation of the job repository
- `internal/httpapi` — HTTP handlers and middleware (auth, rate limiting, logging)
- `migrations/` — SQL schema migrations

## Local development

Requires Go 1.22+ and Docker (for Postgres).

\`\`\`bash
cp .env.example .env
# fill in real values in .env
docker compose up -d
\`\`\`

More setup instructions coming as the project develops.
