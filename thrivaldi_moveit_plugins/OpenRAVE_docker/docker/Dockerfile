FROM personalrobotics/ros-openrave
RUN apt-get update || true && apt-get install -y --no-install-recommends build-essential python-pip liblapack-dev && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN pip install sympy==0.7.1
