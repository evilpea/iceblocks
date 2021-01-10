{
  "version": "1.2",
  "package": {
    "name": "PWM",
    "version": "1.1",
    "description": "8bit PWM",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "ae386ba9-c556-40c0-b214-a6e643fa1cd9",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true,
            "virtual": true
          },
          "position": {
            "x": 368,
            "y": 272
          }
        },
        {
          "id": "d201f241-80e8-4d47-a19f-f2d2ff04e20d",
          "type": "basic.output",
          "data": {
            "name": "",
            "virtual": true
          },
          "position": {
            "x": 1128,
            "y": 368
          }
        },
        {
          "id": "9f579467-67e8-4b64-ac2a-e3709fa148e1",
          "type": "basic.input",
          "data": {
            "name": "en",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 368,
            "y": 368
          }
        },
        {
          "id": "a25910de-e709-4e5d-b6d2-2cd35491c1a1",
          "type": "basic.input",
          "data": {
            "name": "rst",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": 368,
            "y": 416
          }
        },
        {
          "id": "ff4185f2-aa74-4231-80a7-86f2e0cdfbd9",
          "type": "basic.input",
          "data": {
            "name": "duty",
            "range": "[7:0]",
            "clock": false,
            "size": 8,
            "virtual": true
          },
          "position": {
            "x": 368,
            "y": 464
          }
        },
        {
          "id": "ea3c0938-4798-484c-b69d-8831fb35f33d",
          "type": "basic.code",
          "data": {
            "code": "// 8bit PWM\nreg vout;\nassign out = vout;\n\nalways @(posedge clk) begin\n  if (duty == 0)\n    vout <= 0;\n  else if (duty >= count)\n    vout <= 1;\n  else\n    vout <= 0;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "clk"
                },
                {
                  "name": "count",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "duty",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "out"
                }
              ]
            }
          },
          "position": {
            "x": 776,
            "y": 256
          },
          "size": {
            "width": 304,
            "height": 288
          }
        },
        {
          "id": "6173fdf3-c7a8-4ec0-b199-d58e3ea52782",
          "type": "8082562027c769c264719b47f6835b9d1d68726c",
          "position": {
            "x": 552,
            "y": 352
          },
          "size": {
            "width": 96,
            "height": 96
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "ea3c0938-4798-484c-b69d-8831fb35f33d",
            "port": "out"
          },
          "target": {
            "block": "d201f241-80e8-4d47-a19f-f2d2ff04e20d",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "ff4185f2-aa74-4231-80a7-86f2e0cdfbd9",
            "port": "out"
          },
          "target": {
            "block": "ea3c0938-4798-484c-b69d-8831fb35f33d",
            "port": "duty"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ae386ba9-c556-40c0-b214-a6e643fa1cd9",
            "port": "out"
          },
          "target": {
            "block": "ea3c0938-4798-484c-b69d-8831fb35f33d",
            "port": "clk"
          }
        },
        {
          "source": {
            "block": "6173fdf3-c7a8-4ec0-b199-d58e3ea52782",
            "port": "a7425493-8029-487d-9e35-538464bfe7d5"
          },
          "target": {
            "block": "ea3c0938-4798-484c-b69d-8831fb35f33d",
            "port": "count"
          },
          "size": 8
        },
        {
          "source": {
            "block": "ae386ba9-c556-40c0-b214-a6e643fa1cd9",
            "port": "out"
          },
          "target": {
            "block": "6173fdf3-c7a8-4ec0-b199-d58e3ea52782",
            "port": "03ebdc3d-82f3-4de9-99f7-fbf76bb0092b"
          }
        },
        {
          "source": {
            "block": "9f579467-67e8-4b64-ac2a-e3709fa148e1",
            "port": "out"
          },
          "target": {
            "block": "6173fdf3-c7a8-4ec0-b199-d58e3ea52782",
            "port": "d74f8893-7229-4df4-8610-227470405a86"
          }
        },
        {
          "source": {
            "block": "a25910de-e709-4e5d-b6d2-2cd35491c1a1",
            "port": "out"
          },
          "target": {
            "block": "6173fdf3-c7a8-4ec0-b199-d58e3ea52782",
            "port": "87d5a19e-e4c6-4426-a980-c6d2ae881c58"
          }
        }
      ]
    }
  },
  "dependencies": {
    "8082562027c769c264719b47f6835b9d1d68726c": {
      "package": {
        "name": "COUNT",
        "version": "1.0",
        "description": "8bit Counter",
        "author": "EvilPea <evilpea3@gmail.com>",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "03ebdc3d-82f3-4de9-99f7-fbf76bb0092b",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 144
              }
            },
            {
              "id": "d74f8893-7229-4df4-8610-227470405a86",
              "type": "basic.input",
              "data": {
                "name": "en",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 232
              }
            },
            {
              "id": "a7425493-8029-487d-9e35-538464bfe7d5",
              "type": "basic.output",
              "data": {
                "name": "out",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 856,
                "y": 232
              }
            },
            {
              "id": "87d5a19e-e4c6-4426-a980-c6d2ae881c58",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 320
              }
            },
            {
              "id": "13af14ff-9a78-455c-af01-b4505f1e68cb",
              "type": "basic.code",
              "data": {
                "code": "// 8bit counter\nreg out;\n\nalways @(posedge clk) begin\n  if (rst == 1)\n    out <= 0;\n  else if (en == 1)\n    out <= out + 1;\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "en"
                    },
                    {
                      "name": "rst"
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
                "x": 408,
                "y": 136
              },
              "size": {
                "width": 392,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "03ebdc3d-82f3-4de9-99f7-fbf76bb0092b",
                "port": "out"
              },
              "target": {
                "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "d74f8893-7229-4df4-8610-227470405a86",
                "port": "out"
              },
              "target": {
                "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
                "port": "en"
              }
            },
            {
              "source": {
                "block": "87d5a19e-e4c6-4426-a980-c6d2ae881c58",
                "port": "out"
              },
              "target": {
                "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "13af14ff-9a78-455c-af01-b4505f1e68cb",
                "port": "out"
              },
              "target": {
                "block": "a7425493-8029-487d-9e35-538464bfe7d5",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    }
  }
}