//Code for removing element in an array

//I swapped the value based on the index of the item that needed to be removed,
//and replaced it with the last item in the array.

//I did this because as far as I know in solidity, we always keep track of the item in the array with the mapping.
//and mapping doesn't require any order.abi

//SPDX-License-Identifier:Unknown;
pragma solidity 0.8.7;

contract deleteItem {
    uint[] data = [1, 2, 3, 4, 5, 6];

    function shiftValue(uint _index) internal {
        uint temporary = data[_index];
        data[_index] = data[(data.length) - 1];
        data[(data.length) - 1] = temporary;
    }

    function popItem() internal {
        data.pop();
    }

    function getData() public view returns (uint[] memory) {
        return data;
    }

    function removeItem(uint _index) public {
        shiftValue(_index);
        popItem();
    }
}
