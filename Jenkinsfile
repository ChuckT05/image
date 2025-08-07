pipeline {
    agent any 

    environment {
        IMAGE_NAME = 'image:latest'
    }

    stages {
        stage('Build Image with Buildah') {
            steps {
                script {
                    sh 'buildah bud -f Dockerfile -t $IMAGE_NAME .' 
                    // Ensure Buildah is installed and accessible on the Jenkins agent.
                    // You might need to configure the agent with Buildah or use a container agent with Buildah pre-installed.

                    // Clone your repository containing the application code and Containerfile/Dockerfile
                    // sh 'git clone https://github.com/your-repo/your-app.git'
                    // dir('your-app') { // Change to the application directory
                    //     // Build the image using Buildah
                    //     // 'buildah bud' is similar to 'docker build'
                    //     // Replace 'my-app-image' with your desired image name
                    //     // Replace '.' with the path to your Containerfile/Dockerfile if it's not in the current directory
                    //     sh 'buildah bud -t my-app-image .' 
                    // }
                }
            }
        }

        // stage('Push Image') {
        //     steps {
        //         sh 'buildah push $IMAGE_NAME docker://docker.io/myuser/my-app:latest'
        //     }
        // }

        // stage('Cleanup') {
        //     steps {
        //         sh 'buildah rmi $IMAGE_NAME'
        //     }
        // }

        // stage('Push Image (Optional)') {
        //     steps {
        //         script {
        //             // This stage demonstrates pushing the image to a container registry
        //             // Replace 'registry.example.com/my-app-image' with your registry and image name
        //             // You will need to handle authentication to your registry (e.g., using 'buildah login' or credentials)
        //             sh 'buildah push my-app-image registry.example.com/my-app-image:latest' 
        //         }
        //     }
        // }
    }
}