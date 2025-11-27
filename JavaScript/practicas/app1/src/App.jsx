import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import Table from "react-bootstrap/Table";
import Button from "react-bootstrap/Button";
{
  /*`bootstrap/dist/css/bootstrap.min.css`*/
}
import "bootstrap/dist/css/bootstrap.min.css";
{
  /* para los estilos*/
}

function App() {
  const [count, setCount] = useState(0);
  const [productos, setProductos] = useState([
    { id: 1, producto: "Tv", precio: 14000 },
    { id: 2, producto: "Laptop", precio: 12000 },
    { id: 3, producto: "Teclado", precio: 500 },
  ]);

  return (
    <>
      <div>
        <a href="https://vite.dev" target="_blank" rel="noopener noreferrer">
          <img src={viteLogo} className="logo" alt="Vite logo" />
        </a>
        <a href="https://react.dev" target="_blank" rel="noopener noreferrer">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>Vite + React</h1>

      {/* Tabla de productos usando los datos del estado */}
      <Table striped bordered hover>
        <thead>
          <tr>
            <th>#</th>
            <th>Producto</th>
            <th>Precio</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          {productos.map((producto) => (
            <tr key={producto.id}>
              <td>{producto.id}</td>
              <td>{producto.producto}</td>
              <td>${producto.precio}</td>
              <td>
                <Button variant="primary">Primary</Button>
              </td>
            </tr>
          ))}
        </tbody>
      </Table>
    </>
  );
}

export default App;
