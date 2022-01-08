FROM codercom/coder:1.25.1
CMD ["bash"]
ENV PORT=7080
CMD ["run" "--bind" ":7080"]
