// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ToDo {
  struct Task{
    uint id;
    uint date;
    string content;
    string author;
    bool done;
  }

  Task[] tasks;
  
  function createTask(string memory _content, string memory _author) public {
    tasks.push(Task(tasks.length, now, _content, _author, false));
  }

  function getTask(uint id) public view 
  returns (uint,uint,string memory,string memory,bool){
    return(
      id,
      tasks[id].date,
      tasks[id].content,
      tasks[id].author,
      tasks[id].done
    );
  }
  

}
