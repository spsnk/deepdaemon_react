# Lista de comandos para web DD

## Para codigo de sitio web

### 1. Descargar e instalar Git para la plataforma
[https://git-scm.com/](https://git-scm.com/)
### 2. Descargar e instalar NodeJS para la plataforma
[https://nodejs.org/en/](https://nodejs.org/en/)
### 3. Clonar el código fuente
[https://github.com/spsnk/deepdaemon_react](https://github.com/spsnk/deepdaemon_react)
Ejecutar el siguiente comando:
1. `git clone https://github.com/spsnk/deepdaemon_react.git` 
### 4. Instalar dependencias de NodeJS
Ejecutar los siguientes comandos:
1. `cd deepdaemon_react`
2. `npm install`
### 5. Iniciar servidor de desarrollo
`npm start`
### 6. Compilar el sitio
`npm run build`

## Para agregar a la base de datos
### 1. Descargar e instalar HeidiSQL
[https://www.heidisql.com/](https://www.heidisql.com/)
### 2. Configurar una nueva conexión
Introducir los siguientes datos (Modificar en caso de ser necesario):
host: `deepdaemon.org`
user: `deepdaem_web`
database: `deepdaem_web`
password: `LATLpc5y49i2`
Si la base de datos no existe ver punto **2.a**.
#### 2.a Crear y popular la base de datos
Crear la base de datos y ejecutar los scripts SQL `database.sql` y `data.sql`.

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.<br>
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.<br>
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br>
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (Webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: https://facebook.github.io/create-react-app/docs/code-splitting

### Analyzing the Bundle Size

This section has moved here: https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size

### Making a Progressive Web App

This section has moved here: https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app

### Advanced Configuration

This section has moved here: https://facebook.github.io/create-react-app/docs/advanced-configuration

### Deployment

This section has moved here: https://facebook.github.io/create-react-app/docs/deployment

### `npm run build` fails to minify

This section has moved here: https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify
