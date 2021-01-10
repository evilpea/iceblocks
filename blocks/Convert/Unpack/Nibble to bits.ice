{
  "version": "1.2",
  "package": {
    "name": "[ 4 ]",
    "version": "1.0",
    "description": "Outputs 4 bits from a nibble",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "3bea35eb-27c5-477f-ae2b-ba7a044fa256",
          "type": "basic.output",
          "data": {
            "name": "b3",
            "virtual": true
          },
          "position": {
            "x": 832,
            "y": 120
          }
        },
        {
          "id": "ab9f0453-dc82-4cc0-b2e2-7ffbeddc7d84",
          "type": "basic.output",
          "data": {
            "name": "b2",
            "virtual": true
          },
          "position": {
            "x": 832,
            "y": 176
          }
        },
        {
          "id": "4fce47f4-c429-4e37-a944-3a129d84cb7c",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[3:0]",
            "clock": false,
            "size": 4,
            "virtual": true
          },
          "position": {
            "x": 200,
            "y": 208
          }
        },
        {
          "id": "87dad550-29d8-4ab1-bf6d-e9c27fa710d3",
          "type": "basic.output",
          "data": {
            "name": "b1",
            "virtual": true
          },
          "position": {
            "x": 832,
            "y": 232
          }
        },
        {
          "id": "d497a656-7374-4670-8b37-a4443156eaf7",
          "type": "basic.output",
          "data": {
            "name": "b0",
            "virtual": true
          },
          "position": {
            "x": 832,
            "y": 288
          }
        },
        {
          "id": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
          "type": "basic.code",
          "data": {
            "code": "assign out0 = in[0];\nassign out1 = in[1];\nassign out2 = in[2];\nassign out3 = in[3];",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "out3"
                },
                {
                  "name": "out2"
                },
                {
                  "name": "out1"
                },
                {
                  "name": "out0"
                }
              ]
            }
          },
          "position": {
            "x": 368,
            "y": 120
          },
          "size": {
            "width": 408,
            "height": 232
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out0"
          },
          "target": {
            "block": "d497a656-7374-4670-8b37-a4443156eaf7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out1"
          },
          "target": {
            "block": "87dad550-29d8-4ab1-bf6d-e9c27fa710d3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out2"
          },
          "target": {
            "block": "ab9f0453-dc82-4cc0-b2e2-7ffbeddc7d84",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "out3"
          },
          "target": {
            "block": "3bea35eb-27c5-477f-ae2b-ba7a044fa256",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "4fce47f4-c429-4e37-a944-3a129d84cb7c",
            "port": "out"
          },
          "target": {
            "block": "2b5bf30d-a98f-4157-b249-ac1c8108e7ef",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}