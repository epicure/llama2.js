FROM node:21

WORKDIR /app
COPY . .
RUN mv run.html index.html
ADD https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin  .
ADD https://huggingface.co/karpathy/tinyllamas/resolve/main/stories42M.bin  .
ADD https://huggingface.co/karpathy/tinyllamas/resolve/main/stories110M.bin .
RUN yarn add http-server

EXPOSE 8080
CMD ["npx", "http-server", "-a", "0.0.0.0", "-p", "8080", "--cors"]

