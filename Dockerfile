FROM rust:latest


RUN cargo install vanity --features=gpu

# Set the entry point to vanity
ENTRYPOINT ["vanity"]

# Default command (can be overridden)
CMD ["--help"]
