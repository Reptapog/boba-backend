INSERT INTO board_category_mappings(id, board_id, category_id) OVERRIDING SYSTEM VALUE VALUES
    -- Maps to "blood" category in "!gore"
    (1, 2, 1),
    (2, 2, 2);
INSERT INTO subscriptions(id, string_id, name) OVERRIDING SYSTEM VALUE VALUES
    (1, '04af1212-e641-414b-bf84-81fae2da8484', 'blood & bruises'),
    (2, '11e29fe7-1913-48a5-a3aa-9f01358d212f', 'blood'),
    (3, 'a87800a6-21e5-46dd-a979-a901cdcea563', 'aiba!');

INSERT INTO board_category_subscriptions(board_category_mapping_id, subscription_id) OVERRIDING SYSTEM VALUE VALUES
    (1, 1),
    (2, 1),
    (1, 2);

INSERT INTO webhooks(id, name, webhook) OVERRIDING SYSTEM VALUE VALUES
    (1, 'realm of terror', 'http://localhost:4200/hooks/realm_of_terror'),
    (2, 'volunteers',  'http://localhost:4200/hooks/volunteers'),
    (3, 'volunteers',  'http://localhost:4200/hooks/aiba');

INSERT INTO subscription_webhooks (subscription_id, webhook_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO thread_category_subscriptions (thread_id, category_id, subscription_id) VALUES (
    -- Somnium files memes thread
    (SELECT id FROM threads WHERE string_id = '2765f36a-b4f9-4efe-96f2-cb34f055d032'),
    (SELECT id FROM categories WHERE category = 'aiba'),
    3);