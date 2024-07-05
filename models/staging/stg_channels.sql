WITH raw_channels AS (
    SELECT
        channel_id,
        channel_name,
        created_at,
        updated_at
    FROM {{ source('omni_channel', 'channels') }}
)

SELECT
    *
FROM raw_channels
