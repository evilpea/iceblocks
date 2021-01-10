{
  "version": "1.2",
  "package": {
    "name": "ROT ENC",
    "version": "1.0",
    "description": "Rotary Encoder Driver",
    "author": "EvilPea <evilpea3@gmail.com>",
    "image": ""
  },
  "design": {
    "board": "icestick",
    "graph": {
      "blocks": [
        {
          "id": "3aacd1c0-58db-49fd-a5a3-d11177f10e3e",
          "type": "basic.input",
          "data": {
            "name": "",
            "clock": true,
            "virtual": true
          },
          "position": {
            "x": -416,
            "y": -352
          }
        },
        {
          "id": "3018128b-7ea1-4a97-97fb-a63ca353f04e",
          "type": "basic.output",
          "data": {
            "name": "cw",
            "virtual": true
          },
          "position": {
            "x": 296,
            "y": -288
          }
        },
        {
          "id": "4d8666e8-6422-4104-b725-4f53afb0c9c0",
          "type": "basic.input",
          "data": {
            "name": "a",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": -416,
            "y": -272
          }
        },
        {
          "id": "4988a986-df55-47ac-8dd3-68bb6baecd2b",
          "type": "basic.output",
          "data": {
            "name": "ccw",
            "virtual": true
          },
          "position": {
            "x": 296,
            "y": -192
          }
        },
        {
          "id": "5528d0e9-259f-4ec0-911d-7bcd9b92675f",
          "type": "basic.input",
          "data": {
            "name": "b",
            "clock": false,
            "virtual": true
          },
          "position": {
            "x": -416,
            "y": -176
          }
        },
        {
          "id": "1f93f1ae-03ad-42c4-bd64-31f8cc4e0a87",
          "type": "basic.code",
          "data": {
            "code": "reg cw_t = 1'b0, ccw_t = 1'b0;\nassign cw = cw_t;\nassign ccw = ccw_t;\n\nalways @(posedge a) begin\n    if (!b)\n        cw_t <= ~cw_t;\n    else\n        ccw_t <= ~ccw_t;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "a"
                },
                {
                  "name": "b"
                }
              ],
              "out": [
                {
                  "name": "cw"
                },
                {
                  "name": "ccw"
                }
              ]
            }
          },
          "position": {
            "x": -128,
            "y": -304
          },
          "size": {
            "width": 360,
            "height": 192
          }
        },
        {
          "id": "91921127-ca82-40c6-8ace-801d11979d9c",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -280,
            "y": -288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "dc83e48f-362f-4e32-a666-d0b565e8d0dd",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -272,
            "y": -192
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "dc83e48f-362f-4e32-a666-d0b565e8d0dd",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1f93f1ae-03ad-42c4-bd64-31f8cc4e0a87",
            "port": "b"
          }
        },
        {
          "source": {
            "block": "91921127-ca82-40c6-8ace-801d11979d9c",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1f93f1ae-03ad-42c4-bd64-31f8cc4e0a87",
            "port": "a"
          }
        },
        {
          "source": {
            "block": "4d8666e8-6422-4104-b725-4f53afb0c9c0",
            "port": "out"
          },
          "target": {
            "block": "91921127-ca82-40c6-8ace-801d11979d9c",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "5528d0e9-259f-4ec0-911d-7bcd9b92675f",
            "port": "out"
          },
          "target": {
            "block": "dc83e48f-362f-4e32-a666-d0b565e8d0dd",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "3aacd1c0-58db-49fd-a5a3-d11177f10e3e",
            "port": "out"
          },
          "target": {
            "block": "91921127-ca82-40c6-8ace-801d11979d9c",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "3aacd1c0-58db-49fd-a5a3-d11177f10e3e",
            "port": "out"
          },
          "target": {
            "block": "dc83e48f-362f-4e32-a666-d0b565e8d0dd",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "1f93f1ae-03ad-42c4-bd64-31f8cc4e0a87",
            "port": "cw"
          },
          "target": {
            "block": "3018128b-7ea1-4a97-97fb-a63ca353f04e",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "1f93f1ae-03ad-42c4-bd64-31f8cc4e0a87",
            "port": "ccw"
          },
          "target": {
            "block": "4988a986-df55-47ac-8dd3-68bb6baecd2b",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
    "cfd9babc26edba88e2152493023c4bef7c47f247": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            },
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
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
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}