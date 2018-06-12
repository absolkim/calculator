stage("Package") {
	steps {
		sh "./gradlew build"
	}
}

stage("Docker build") {
	steps {
		sh "docker build -t localhost:5000/absolkim/calculator ."
	}
}

stage("Docker push") {
	steps {
		sh "docker push localhost:5000/absolkim/calculator"
	}
}

stage("Deploy to staging") {
	steps {
		sh "docker run -d --rm -p 8765:8080 --name calculator localhost:5000/absolkim/calculator"
	}
}

stage("Acceptance test") {
	steps {
	sleep 60
	sh "./acceptance_test.sh"
	}
}

post {
	always {
		sh "docker stop calculator"
	}
}

