FROM rust:latest

# Install dependencies for GPU support
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    libssl-dev \
    pkg-config \
    curl \
    nvidia-cuda-toolkit \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /app

# Install vanity with GPU features
RUN cargo install vanity --features=gpu

# Set the entry point to vanity
ENTRYPOINT ["vanity"]

# Default command (can be overridden)
CMD ["--help"]
