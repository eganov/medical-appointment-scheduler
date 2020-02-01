
# BÄD App

This web application is meant to help human resource to manage the appointments of all employees with the company medical service. It provides an overview of an employee's past appointments, reminds when an employee needs to undergo a regular check-up and generates personalized invitation letters which can be downloaded and printed.

## Features
* Create and view employees including their personal data, employee id and their past and future appointments with the company medical service
* Automatic listing of all employees whose next scheduled appointment should take place within a certain period 
(e.g. 30 days)
* Appointment frequency is individually adjustable for each employee (e.g. every 2 years)
* Letter editor for creating and saving any number of sample cover letters (e.g. invitation letter for initial examination, reminder letter of upcoming check-ups)
* Automatic generation of personalized cover letters for each employee

## Getting started
### Prerequisites
Althought not mandatory, you should use [Virtualenv](https://virtualenv.pypa.io/en/latest/) and [Node Version Manager](https://github.com/nvm-sh/nvm) to manage your Python and node.js dependencies on a per-project level.
* Virtualenv:
	```	
	pip install --user virtualenv
	```

* Node Version Manager:
	```
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
	nvm install node
	```

### Installation
* Get the project:
	```
	git clone https://github.com/eganov/medical-appointment-scheduler.git
	cd medical-appointment-scheduler
	```

* Frontend:
	```
	cd scheduler_frontend
	npm i && npm start
	```
	If you see error messages like ``ng: command not found``, try to link Angular CLI (which contains 'ng') explicitly: ``npm link @angular/cli`` and try again.
	
* Backend:
	```
	cd scheduler_backend
	virtualenv venv
	source venv/bin/activate # on Linux
	venv\Scripts\activate # on Windows
	pip install -r requirements.txt
	python manage.py makemigrations
	python manage.py migrate
	python manage.py runserver
	```
	Finally, create an admin user to login with:
	``python manage.py createsuperuser``

## Deployment
How to deploy the application to your production environment is dependent on your system and therefore will not be covered here. Please consider the deployment documentation pages of the [Django](https://docs.djangoproject.com/en/3.0/howto/deployment/) and [Angular](https://angular.io/guide/deployment) projects.

## Contributing
// tbd

## Authors
* **Andrey Eganov**
* **Leon Barth**
* **Corinna Schäfer**
* **Julia Schulz**
* **Dil Jose Paul**

## License
This project is licensed under the MIT License - see the [license file](LICENSE) for details.
