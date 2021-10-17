pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract Queue {
   
    string [] public queue = ["Anton", "Ivan", "Oleg"];
    bool flag = true;

    constructor() public {
       
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    function setNewName (string name) public { // метод добавления в конец массива
        if (queue.empty()){
        queue.push(name);
        }
    }
    function deleteName (uint index) public { // метод удаления первого элемента массива
        
        if (queue.empty()) {
          for(uint i = 0; i < queue.length; i++){ // счетчик массива
            if (index == 1) { // если введенное число равно 1
                delete queue[0]; // удаляем первый элемент массива
            } else flag = false;
          }
        }
    }
}