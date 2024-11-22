// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Todo{
    struct Todo{
        string Text;
        bool completed;
    }

    // An array of "Todo" struct
    Todo[] public  todos;

    function create(string calldata _text) public{
        // 3 ways to initialize a struct:
        // 1. Calling it like a function

    todos.push(Todo(_text, false));

        // 2. Key value mapping

        todos.push(Todo({Text:_text, completed:false}));

        // 3. initialize an empty struct and then update it
        Todo memory todo;
        todo.Text= _text;
        todo.completed=false;

        todos.push(todo);

    }
}