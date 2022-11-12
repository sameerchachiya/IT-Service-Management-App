void rvmSh(String cmd) {

    sh """#!/bin/bash -l

        . ~/.rvm/scripts/rvm > /dev/null 2>&1 || true

        rvm use $RUBY_VERSION > /dev/null 2>&1

        ruby -v

        $cmd

    """

}



pipeline {

    agent { label 'LINUX&&RUBY' }

    triggers {

        githubPush()

    }

    options {

        buildDiscarder(logRotator(daysToKeepStr: '7', numToKeepStr: '3'))

    }

    environment {

        RUBY_VERSION = sh(returnStdout: true, script: 'cat .ruby-version')

    }

    stages {

        stage('Install Dependencies') {

            steps {

                rvmSh('rvm install "ruby-2.6.4"')

                rvmSh('gem install bundler:2.2.33')

                rvmSh('bundle install --without production')

            }

        }

        stage('Test') {

            steps {

                rvmSh('bundle exec rake db:migrate RAILS_ENV=test')

                rvmSh('RAILS_ENV=test bundle exec rspec')

            }

        }


        

    }

    post {

        always {

            cleanWs()

        }

    }

}