# 🎓 Student Signup System — Flutter + .NET Core + SQL Server

A full-stack student information system:
- **Frontend:** Flutter (signup form + student list with search & delete)
- **Backend:** ASP.NET Core Web API (Entity Framework Core)
- **Database:** SQL Server

---

## 📁 Project Structure
```
student_project/
├── flutter_app/          → Flutter mobile app
├── dotnet_api/StudentApi/ → .NET Core Web API
└── database/create_database.sql  → SQL Server schema
```

---

## 1️⃣ Database Setup

1. Open **SQL Server Management Studio (SSMS)**.
2. Run `database/create_database.sql` — it creates `StudentDB` with a `Students` table (and 2 sample rows).

---

## 2️⃣ Backend Setup (.NET Core API)

**Requirements:** .NET 8 SDK, SQL Server.

```bash
cd dotnet_api/StudentApi
dotnet restore
```

Update the connection string in `appsettings.json` if needed:
```json
"DefaultConnection": "Server=localhost;Database=StudentDB;Trusted_Connection=True;TrustServerCertificate=True;"
```

Run the API:
```bash
dotnet run
```
By default it runs on `http://localhost:5000` (check console output for exact port).
Swagger UI (API docs/test page) → `http://localhost:5000/swagger`

### API Endpoints
| Method | Endpoint                  | Description              |
|--------|----------------------------|--------------------------|
| POST   | /api/students/signup       | Register a new student   |
| POST   | /api/students/login        | Login with email/password|
| GET    | /api/students               | Get all students          |
| GET    | /api/students/{id}          | Get one student           |
| PUT    | /api/students/{id}          | Update student info       |
| DELETE | /api/students/{id}          | Delete a student          |

---

## 3️⃣ Flutter App Setup

**Requirements:** Flutter SDK 3.x+

```bash
cd flutter_app
flutter pub get
```

⚠️ **Important:** Open `lib/services/api_service.dart` and set the correct `baseUrl`:
- Android Emulator → `http://10.0.2.2:5000/api` (already set)
- iOS Simulator → `http://localhost:5000/api`
- Real device → `http://<YOUR_PC_LAN_IP>:5000/api` (e.g. `http://192.168.1.5:5000/api`)

Run the app:
```bash
flutter run
```

---

## ✨ Features
- Full signup form: name, email, password (with confirm), phone, roll number,
  department, semester, date of birth (picker), gender (dropdown), address
- Client-side validation on every field
- Password hashed with BCrypt on the backend before storing
- Duplicate email / roll number check
- Student list screen — fetches live data from the API
- Search/filter students by name, roll number, or department
- Delete student directly from the list (pull-to-refresh supported)
- Clean, modern Material 3 UI with Poppins font & custom color theme

---

## 🖌️ Customizing the look
All colors/fonts live in `flutter_app/lib/theme.dart` — change `AppColors.primary`
and `AppColors.secondary` to instantly re-theme the whole app.

---

## 📌 Notes for LinkedIn post
Feel free to record a short screen demo of:
1. Filling the signup form → success toast
2. Student list screen showing the newly added student
3. Swagger UI showing the live API endpoints

Good luck with your post! 🚀
