import pandas as pd
import random

rows = []

for i in range(1, 501):
    customer_id = f"C{i:03d}"

    age = random.randint(21, 60)

    gender = random.choice(["Male", "Female"])

    employment = random.choice([
        "Salaried",
        "Self-Employed",
        "Business"
    ])

    income = random.randint(200000, 2000000)

    loan_amount = random.randint(100000, 5000000)

    loan_type = random.choice([
        "Home",
        "Personal",
        "Car",
        "Education"
    ])

    credit_score = random.randint(300, 900)

    term = random.choice([
        12, 24, 36, 48, 60,
        84, 120, 180, 240
    ])

    if credit_score >= 650 and income > 400000:
        status = "Approved"
    else:
        status = "Rejected"

    rows.append([
        customer_id,
        age,
        gender,
        employment,
        income,
        loan_amount,
        loan_type,
        credit_score,
        term,
        status
    ])

df = pd.DataFrame(rows, columns=[
    "Customer_ID",
    "Age",
    "Gender",
    "Employment_Status",
    "Annual_Income",
    "Loan_Amount",
    "Loan_Type",
    "Credit_Score",
    "Loan_Term_Months",
    "Loan_Status"
])

df.to_csv("Bank_Loan_Dataset.csv", index=False)

print("Dataset Created Successfully!")