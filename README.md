# OpenGL_GLUT_Template

A simple and reusable template for setting up an OpenGL project with GLUT and CMake. This repository provides a structured starting point to avoid repetitive setup tasks. **No need to install GLUT as it is already packaged in this template.**

## Prerequisites
Make sure you have the following installed:
- CMake (>= 3.10)
- A C++ compiler (GCC, Clang, MSVC, etc.) preferably MinGW

## Directory Structure
```sh
📦 OpenGL_GLUT_Template
├── 📂 src                  # Source files
│   └── main.cpp            # Entry point
├── 📂 external             # Include files
├── 📂 cmake                # CMake modules (if needed)
├── 📂 build                # Build directory (generated)
├── CMakeLists.txt          # CMake configuration
├── README.md               # Project documentation
└── .gitignore              # Git ignore rules
```

## Installation & Usage
### 1. Clone the Repository
```sh
git clone https://github.com/MohammadYehya/OpenGL_GLUT_Template.git
cd OpenGL_GLUT_Template
```

### 2. Initialize the Build
```sh
mkdir build && cd build
cmake -G "MinGW Makefiles" ..
```

### 3. Build the Application
```sh
cmake --build .
```

### 4. Run the Application
```sh
App.exe  # On Linux/Mac: ./App
```

## Customization
Modify `main.cpp` to add your own OpenGL logic. Extend the structure as needed for more complex projects.

## Contributing
Feel free to submit issues and pull requests to improve this template.

## License
This project is licensed under the MIT License.