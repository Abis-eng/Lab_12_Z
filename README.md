# Lab 12 Z

Java Maven web application (JSP, Tomcat 10, MySQL) with Docker and GitHub Actions CI/CD.

Repository: [Abis-eng/Lab_12_Z](https://github.com/Abis-eng/Lab_12_Z)

## Features

- **Addition table** (`addition.jsp`): base 7, rows 1–10 (replaces multiplication table from the reference lab).
- **Number form** (`index.jsp` → `welcome.jsp`): square, even/odd, background color; logs to MySQL `lab_12_z.lab_logs`.
- **Auto schema**: `LabDbListener` creates database and table on Tomcat startup (Smart Tomcat / XAMPP).

## MySQL (XAMPP)

1. Start **Apache** and **MySQL** in XAMPP Control Panel.
2. Optional manual setup: run `src/main/webapp/WEB-INF/setup-mysql.sql` in phpMyAdmin (`http://localhost/phpmyadmin`).
3. Default connection in `WEB-INF/web.xml`: user `root`, empty password, database `lab_12_z`.
4. After submitting a number on the home page, check `lab_logs` in phpMyAdmin.

## Local run (Tomcat)

**Docker Compose:**

```bash
mvn clean package -DskipTests
docker compose up --build
```

Open: **http://localhost:8081/WebApp/**

**Smart Tomcat (IntelliJ):** deploy the WAR; open **http://localhost:8080/WebApp/** (MySQL must be running for DB logging).

## GitHub Actions workflows

| Workflow | Trigger | Purpose |
|----------|---------|---------|
| `github-actions-demo.yml` | push | Lab demo |
| `build.yml` | all branches | CI: validate files + Maven build |
| `ci.yml` | main, master | Maven + Docker build (+ optional Docker Hub push) |
| `deploy.yml` | main | Build WAR, run Tomcat in Docker, verify app |
| `deploy-staging.yml` | develop | Staging deploy on port 8081 |

## Live URLs

| Service | URL |
|---------|-----|
| GitHub Pages (static site + banner) | https://abis-eng.github.io/Lab_12_Z/ |
| GitHub Actions | https://github.com/Abis-eng/Lab_12_Z/actions |
| Docker app (local) | http://localhost:8081/WebApp/ |

**Pages setup:** Repo → Settings → Pages → Source: **GitHub Actions**.

## Push to GitHub

```bash
git remote add origin https://github.com/Abis-eng/Lab_12_Z.git
git branch -M main
git add .
git commit -m "Lab 12 Z: Tomcat, Docker, MySQL, addition calculator"
git push -u origin main
```
