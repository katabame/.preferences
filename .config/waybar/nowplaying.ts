async function main() {
	const command = new Deno.Command("playerctl", {
		args: ["metadata", "title"],
	});

	const textdecoder = new TextDecoder();

	const title = textdecoder.decode((await command.output()).stdout);

	console.log(title);
	const trim = title.replace(/\【/, "");
	console.log(trim);
}

if (import.meta.main) {
	main();
}
