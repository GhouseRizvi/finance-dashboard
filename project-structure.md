finance-dashboard/
├── docker-compose.yml
├── .env
├── backend/
│   ├── Dockerfile
│   ├── requirements.txt
│   ├── app/
│   │   ├── __init__.py
│   │   ├── main.py
│   │   ├── models.py
│   │   ├── schemas.py
│   │   ├── crud.py
│   │   ├── database.py
│   │   └── routers/
│   │       ├── __init__.py
│   │       ├── transactions.py
│   │       └── categories.py
│   └── alembic/           # Database migrations
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   ├── public/
│   └── src/
│       ├── App.jsx
│       ├── components/
│       │   ├── Dashboard.jsx
│       │   ├── TransactionForm.jsx
│       │   └── Charts.jsx
│       └── services/
│           └── api.js
└── postgres/
    └── init.sql          # Initial DB setup