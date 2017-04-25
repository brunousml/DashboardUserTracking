# Dashboard to User Tracking

Start up Dashboard Project

## Run with Docker
```
docker build -t dashboard . 

docker run -it -p 3000:3000 dashboard
```

## Automatic Start Up Project

Execute this command on project directory
```
make
 ```
 
## Manual Start Up Project

### Step I: Migrations
```
rails db:migrate
```
 
### Step II: Start server
```
rails server
```


## Teste the tracking.JS

Execute index.html file inside a `site_exemple` directory.

Navigate through generic, elements and contact. 

At the contact page, you can send your name and email. 

## Dashboard

### Tracks
You can see the list of tracks at http://localhost:3000/usertracks

### Contacts
You can see the list of contacts at http://localhost:3000/contacts