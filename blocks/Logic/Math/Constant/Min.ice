{
  "version": "1.2",
  "package": {
    "name": "MIN",
    "version": "1.0",
    "description": "Min",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "0a840a87-2bb1-4160-8738-1c11c1896c61",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 0,
            "y": 128
          }
        },
        {
          "id": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
          "type": "basic.output",
          "data": {
            "name": "",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": ""
              },
              {
                "index": "6",
                "name": "",
                "value": ""
              },
              {
                "index": "5",
                "name": "",
                "value": ""
              },
              {
                "index": "4",
                "name": "",
                "value": ""
              },
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 552,
            "y": 128
          }
        },
        {
          "id": "38695643-414d-4e2a-8664-ee7128bd399a",
          "type": "basic.constant",
          "data": {
            "name": "min",
            "value": "",
            "local": false
          },
          "position": {
            "x": 280,
            "y": -16
          }
        },
        {
          "id": "a039027d-2da0-4031-8ec3-af3621b86703",
          "type": "basic.code",
          "data": {
            "code": "assign out = (in < min) ? min : in;",
            "params": [
              {
                "name": "min"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "in",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 160,
            "y": 96
          },
          "size": {
            "width": 336,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "0a840a87-2bb1-4160-8738-1c11c1896c61",
            "port": "out"
          },
          "target": {
            "block": "a039027d-2da0-4031-8ec3-af3621b86703",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a039027d-2da0-4031-8ec3-af3621b86703",
            "port": "out"
          },
          "target": {
            "block": "1a0450db-e566-4aa8-87d5-477471bf9e5f",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "38695643-414d-4e2a-8664-ee7128bd399a",
            "port": "constant-out"
          },
          "target": {
            "block": "a039027d-2da0-4031-8ec3-af3621b86703",
            "port": "min"
          }
        }
      ]
    }
  },
  "dependencies": {}
}