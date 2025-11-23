
# Data Pipeline for Hardware Sales 📊

## 📖 Context
The company **TechStore** sells hardware equipment and maintains a sales history in a CSV file hosted on GitHub.  
The data team needs to transform this data into actionable insights using **Microsoft Fabric** and **Power BI**, ensuring **version control** and **collaboration** via **Git/GitHub**.

Two professionals will be involved:
- **Data Engineer**: responsible for data ingestion, transformation, and storage.
- **Data Analyst**: responsible for semantic model creation and report development.

---

## ⚙️ Problem
The raw CSV file is not ready for analysis:
- It contains non-standardized columns (e.g., price unit).
- It is not integrated into an analytical environment.
- incluia a imagem faltando a coluna!!
---

## 🎯 Objective
Create an automated pipeline that:
- Ingests data from GitHub into Microsoft Fabric.
- Transforms and stores it in the Lakehouse.
- Builds a semantic model for Power BI reports.
- Versions scripts and documentation in GitHub.

---

## 👨‍💻 Diagram
![Diagrama do Pipeline](images/hardwaresales.png)
---

## 🚦Prerequisites
Before starting, make sure to:
1. **Active Microsoft Fabric account**.
![Diagrama do Pipeline](images/free-account.png)
   - account jire: data engineer
![Diagrama do Pipeline](images/data-engineer.png)
   - account jovita: data analyst
![Diagrama do Pipeline](images/data-analyst.png)

3. **Create a Workspace in Microsoft Fabric**:
   - Suggested name: `WS-HardwareSales`.
![Diagrama do Pipeline](images/workspace.png)

4. **Access Management**:
   - Add **Data Engineer** as **Admin** of the workspace.
   - Add **Data Analyst** as **Member** (with permission to create models and reports).
5. **GitHub Repository**:
   - Create repository: `Data-Pipeline-for-Sales`.
   - colocar a imagem do create repository
   - Create Token (com imagem abaixo)
   - Give permissions (com imagem abaixo)
   - Configure **Git Integration** in Microsoft Fabric:
     - In **Workspace Settings → Git Integration**, connect to the GitHub repository.
     - Choose the name, personal token e url repository

---
