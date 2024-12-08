create table if not exists card_templates
(
    id          bigint primary key,
    company_id  bigint    not null references companies (id),
    usage_limit integer   not null default 1,
    expire_days integer,
    description varchar(500),
    external_id uuid      not null,
    created_at  timestamp not null,
    updated_at  timestamp not null
)