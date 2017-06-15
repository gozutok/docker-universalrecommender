## Universal Recommender Docker Container
Docker container for PredictionIO + Universal Recommender - ActionML.

Click to get more info about [ActionML - Universal Recommender](http://actionml.com/docs/ur) and [PredictionIO](https://prediction.io)

[![Docker build](http://dockeri.co/image/gozutok/universalrecommender)](https://registry.hub.docker.com/u/gozutok/universalrecommender````/)

### How to use?
1. Create docker container.
    ```
    docker run -it -p 8000:8000 gozutok/universalrecommender /bin/bash
    ```
2. Start PredictionIO services in container. 
    
    (These commands can't trigger services when running from host machine.)
    ```
    pio-start-all
    pio status
    ```
3. [Check documents and deploy your first engine](http://actionml.com/docs/ur_quickstart)
4. [Set your engine configuration & build your own engine](http://actionml.com/docs/ur_config)
