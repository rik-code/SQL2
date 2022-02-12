CREATE TABLE IF NOT EXISTS subjects (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    age TEXT,
    mark REAL NOT NULL DEFAULT 5.0,
    subjects_id INTEGER,
    status TEXT DEFAULT 'pay',

    FOREIGN KEY (subjects_id) REFERENCES subjects (id)
);
