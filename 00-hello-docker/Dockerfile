FROM alpine:3.20
# ^ Start from a tiny Linux base. Version-pinned for repeatability.
#   "alpine" is ~7MB and includes BusyBox (basic UNIX tools).

WORKDIR /app
# ^ Set the working directory inside the image. Future commands run relative to /app.

COPY hello.sh .
# ^ Copy our script from the build context (your host folder) into the image at /app/hello.sh.
#   This creates a new image layer and caches unless the file changes.

RUN chmod +x hello.sh
# ^ Build-time command: mark the file executable INSIDE the image (separate from host perms).
#   Each RUN adds a layer; keep RUN steps minimal for smaller images.

CMD ["./hello.sh"]
# ^ The default command when someone runs the image as a container.
#   Exec form (JSON array) is preferred: signals/arguments are passed correctly, no extra shell.
