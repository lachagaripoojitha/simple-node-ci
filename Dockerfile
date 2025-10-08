FROM public.ecr.aws/lambda/nodejs:18

# Copy your code into Lambda task root
COPY app.js package*.json ${LAMBDA_TASK_ROOT}/

# Install dependencies
RUN npm install --omit=dev

# Define Lambda handler (file.function)
CMD ["app.handler"]
