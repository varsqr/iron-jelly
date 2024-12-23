create table if not exists cards
(
    id               bigint primary key,
    user_id          bigint      not null references users (id),
    is_active        boolean     not null default true,
    expire_date      timestamp,
    card_template_id bigint      not null references card_templates (id),
    external_id      uuid        not null,
    created_at       timestamp   not null,
    updated_at       timestamp   not null,
    created_by       varchar(50) not null default 'SYSTEM',
    updated_by       varchar(50) not null default 'SYSTEM'
)