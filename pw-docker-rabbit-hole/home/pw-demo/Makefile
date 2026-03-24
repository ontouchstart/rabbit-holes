all:
	npm install
	node src/server.js & SERVER_PID=$$!; echo 'Waiting for server'; until curl -s http://localhost:3000/health; do sleep 1; done; echo 'Server ready'; npx playwright test --reporter=dot; TEST_EXIT=$$?; kill $$SERVER_PID;
