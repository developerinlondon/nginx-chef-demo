Example Application for Demonstrating Nginx Load-balancing a 2 node go application cluster.

It uses Vagrant. So ensure Vagrant is installed locally before running this.

To bring the stack up:

`vagrant up`

Now test the application is running by running:

`curl lb.internal`

run the above a few times and you will see the output alternating between 'Hello there, I'm served from app1!' and 'Hello there, I'm served from app2!'

This repository pulls the go code from https://github.com/developerinlondon/sample_go_app

Updating that repo and reprovision by running
`vagrant provision`

