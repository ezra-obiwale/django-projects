# Django projects

Create Django projects without installing python and dependencies on the host system.

## Prerequisites

The only requirement is [Docker](https://docs.docker.com/get-docker/) with the [compose plugin](https://docs.docker.com/compose/install/).

## Installation

```bash
git clone https://github.com/ezra-obiwale/django-projects
cd django-projects
docker compose build
```

## Usage

```bash
. startproject example
```

This does the following:

- creates the "example" Django project
- creates necessary docker files including a postgres database compose service.
- changes into the project directory
- builds the projects docker image

> Follow the instructions at the end of the operation to complete the project setup.

### Working on the project

- Update the `.env` file
- Start the container - `docker composer up -d`
- The project runs on http://localhost:8000 (The port may be different if you've changed it in the `.env` file)
- Run every command such as [startapp](https://docs.djangoproject.com/en/4.1/intro/tutorial01/#creating-the-polls-app) as such
    ```bash
    docker compose exec web python manage.py startapp polls
    ```
    or
    ```bash
    docker compose exec web bash
    python manage.py startapp polls
    ```

#### Using dj

`python manage.py` as been compressed into a single command `dj`. As such you can call the above commands like:

```bash
docker compose exec web dj startapp polls
```

or

```bash
docker compose exec web bash
dj startapp polls
```