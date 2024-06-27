# GO-PAY-COB

## Overview
GO-PAY-COB is a user-friendly application designed to simplify the process of splitting payments among friends. Whether it's for a dinner bill, a group trip, or shared expenses, GO-PAY-COB ensures that everyone pays their fair share. The app generates payment links and sends them via email, making it easy for each participant to settle their portion of the bill.

## Features
- **Easy Bill Splitting:** Automatically calculate and divide expenses among friends or group members.
- **Customizable Splits:** Manually adjust the split amounts if needed for specific scenarios.
- **Email Notifications:** Send payment links directly to friends' email addresses, ensuring they receive and can act on the payment requests promptly.
- **Payment Tracking:** Keep track of who has paid and who hasn't, with reminders sent to those who are yet to complete their payment.
- **Secure Payments:** Use secure payment gateways to handle transactions safely.

## Installation
To install GO-PAY-COB, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/GO-PAY-COB.git
    ```
2. Navigate to the project directory:
    ```sh
    cd GO-PAY-COB
    ```
3. Install the necessary dependencies:
    ```sh
    npm install
    ```

## Usage
1. **Create a New Split:**
   - Enter the total amount and the number of people to split with.
   - Add the email addresses of your friends.
   - Adjust individual shares if necessary.

2. **Send Payment Links:**
   - Click on the "Send Payment Links" button.
   - Each friend will receive an email with a unique payment link.

3. **Track Payments:**
   - Monitor the status of each payment within the app.
   - Send reminders to friends who haven't paid yet.

## Configuration



## Set up Local Env

First, ensure you have Python installed. Then, create a virtual environment and install Django.

```sh
python3 -m venv gopay
source gopay/bin/activate
```

Once your virtual environment is activated, you can install Django using pip.

```sh
pip install django
pip show django

```

Create new Django project using the django-admin command and run the server.

```sh
django-admin startproject gopaycob
cd gopaycob
python manage.py runserver
```


By default, the development server runs on http://127.0.0.1:8000/. Open this URL in your web browser to see the default Django welcome page.

