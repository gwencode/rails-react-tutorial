import React from "react"
import PropTypes from "prop-types"

import { BrowserRouter, Switch, Route } from "react-router-dom";

import HelloWorld from "./HelloWorld";

class App extends React.Component {
  render () {
    return (
      <>
        <HelloWorld greeting={this.props.greeting} />
      </>
    );
  }
}

export default App
