{
  "version": "1.2",
  "package": {
    "name": "MUX [ 4 ]",
    "version": "1.0",
    "description": "Nibble multiplexer",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-162%20419.9h-24v-7.2l-41-11.8v9h-25v2h25v18h-25v2h25v9l41-11.7v-7.4h24v-1.9zm-63%2018.5v-35l37%2010.8v13.5l-37%2010.7z%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "62d31ec9-00e6-4753-b36c-62d78af2b3f8",
          "type": "basic.input",
          "data": {
            "name": "i0",
            "range": "[3:0]",
            "clock": false,
            "size": 4
          },
          "position": {
            "x": 152,
            "y": 96
          }
        },
        {
          "id": "70f23931-3bdc-41da-87c1-e017adfadcee",
          "type": "basic.input",
          "data": {
            "name": "i1",
            "range": "[3:0]",
            "clock": false,
            "size": 4
          },
          "position": {
            "x": 152,
            "y": 168
          }
        },
        {
          "id": "abfd8753-869e-4b66-ae44-e6c3b99542eb",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[3:0]",
            "size": 4
          },
          "position": {
            "x": 664,
            "y": 168
          }
        },
        {
          "id": "e0320d03-a74c-4524-a919-fbb328936ffe",
          "type": "basic.input",
          "data": {
            "name": "sel",
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 232
          }
        },
        {
          "id": "07a0510e-e6b0-4498-a66a-f355bdc69b2f",
          "type": "basic.code",
          "data": {
            "code": "reg [3:0]_out;\n\nalways @(*) begin\n    case(sel)\n        0: _out = i0;\n        1: _out = i1;\n        default: _out = i0;\n    endcase\nend\n\nassign out = _out;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i0",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "i1",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "sel"
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 304,
            "y": 96
          },
          "size": {
            "width": 288,
            "height": 200
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "62d31ec9-00e6-4753-b36c-62d78af2b3f8",
            "port": "out"
          },
          "target": {
            "block": "07a0510e-e6b0-4498-a66a-f355bdc69b2f",
            "port": "i0"
          },
          "size": 4
        },
        {
          "source": {
            "block": "70f23931-3bdc-41da-87c1-e017adfadcee",
            "port": "out"
          },
          "target": {
            "block": "07a0510e-e6b0-4498-a66a-f355bdc69b2f",
            "port": "i1"
          },
          "size": 4
        },
        {
          "source": {
            "block": "e0320d03-a74c-4524-a919-fbb328936ffe",
            "port": "out"
          },
          "target": {
            "block": "07a0510e-e6b0-4498-a66a-f355bdc69b2f",
            "port": "sel"
          }
        },
        {
          "source": {
            "block": "07a0510e-e6b0-4498-a66a-f355bdc69b2f",
            "port": "out"
          },
          "target": {
            "block": "abfd8753-869e-4b66-ae44-e6c3b99542eb",
            "port": "in"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}