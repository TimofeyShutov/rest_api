DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  completed BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (title, description, completed) VALUES
  ('Изучить GO', '"Пройти Tour of GO"', 'true'),
  ('Написать REST API', 'Посмотреть видео и написать структурированную программу', 'true'),
  ('Выложить приложение', 'Развернуть приложение на сервере, закинуть на GitHub', 'true');
