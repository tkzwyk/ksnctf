(function (stack, heap, callStack, main, buf){

	(main = function (label, end) {

		do switch(label)
		{
			case 0:
				// print "PIN: "

				WS2JS.getn(
						function (n) {
							heap[0] = n;
							main(14);
						}
						);
				label = 2;
				break;


			case 14:
				stack.push(  );

				if ( heap[0] == 33355524 ) {
					label = '1';
				}
        else {
          // print "NO"
          label = 1;
        }
				break;

			case '1':
        // print "OK\n"

        // "F"
				WS2JS.putc(70);

				stack.push(76);

        // "L"
				WS2JS.putc(76);

				stack.push(11);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(6);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(24);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(26);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(40);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(25);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(36);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(66);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(16);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(14);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(14);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(27);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(5);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(29);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(4);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(4);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(28);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(22);
				stack.push(stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(34);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				stack.push(55);
				stack.push(-stack.pop() + stack.pop());
				stack.push(stack[stack.length - 1]);
				WS2JS.putc(stack.pop());
				label = 1;
				break;

			case 1:
				WS2JS.onExit();

			case 2:
				end = 1;
        break;

			default:
				throw new Error('Invalid label :' + label);

		} while (!end);
	}
	)(0);

})([], {}, []);


