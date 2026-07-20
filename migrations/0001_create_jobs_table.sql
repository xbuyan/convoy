CREATE TABLE jobs (
    id             BIGSERIAL PRIMARY KEY,
    job_type       TEXT NOT NULL,
    pay_load       JSONB NOT NULL,
    status         TEXT NOT NULL DEFAULT 'pending',
    created_at     TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at     TIMESTAMPTZ NOT NULL DEFAULT now(),
    claimed_by     TEXT NULL,
    claimed_at     TIMESTAMPTZ NULL,
    retries        INTEGER NOT NULL DEFAULT 0,
    next_retry_at  TIMESTAMPTZ NULL
);

CREATE INDEX idx_jobs_status_next_retry ON jobs (status, next_retry_at);
