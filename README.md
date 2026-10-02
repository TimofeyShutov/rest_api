# rest_api
First project on GO

//Запуск контейнера и проверка работоспособности, команды для терминала
- Set-Location 'C:\Users\timof\.vscode\GO_programs\My_Projects\Rest_Api_From_Zero'
- docker compose up -d postgres
- 
//Подтверждение запуска контейнера
- docker exec tasks_postgres pg_isready -U taskuser -d tasksdb
- 
//Запуск приложения
- go run ./cmd/api
- 
//Вывод таблицы
- SELECT * FROM tasks;
- 
//Обновление записи
- UPDATE tasks
SET title = 'Написать REST API самостоятельно',
    description = 'Изучить обработку запросов и работу с базой данных',
    completed = TRUE,
    updated_at = CURRENT_TIMESTAMP
WHERE id = 2;

//Вывод конкретной задачи
- SELECT * FROM tasks WHERE id = 2;

//Добавление задачи
- INSERT INTO tasks (title, description, completed)
VALUES ('Новая задача', 'Описание задачи', FALSE);

//Удаление задачи
- DELETE FROM tasks WHERE id = 4;
