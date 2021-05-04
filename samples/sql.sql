SELECT id, queue, shot_image_id, movie_id, difficulty
                            FROM shots
                            WHERE difficulty = 'easy'
                            AND queue < 9
                            AND movie_id NOT IN (
                                SELECT * FROM (
                                    SELECT movie_id
                                    FROM shots_meta
                                    ORDER BY id DESC
                                    LIMIT 160
                                )
                            as t)
                            AND id NOT IN (
                                SELECT * FROM (
                                    SELECT shot_id
                                    FROM shots_meta
                                    ORDER BY id DESC
                                    LIMIT 5000
                                )
                            as d)
                            AND id NOT IN (
                                SELECT ref_id
                                FROM tags
                                WHERE type = 'ShotTag'
                                AND value LIKE 'replaceplease%'
                            )
                            AND id NOT IN (
                                SELECT ref_id
                                FROM tags
                                WHERE type = 'ShotTag'
                                AND (value LIKE 'gore' OR value LIKE 'nudity')
                            )
                            ORDER BY RAND()
                            LIMIT 1
