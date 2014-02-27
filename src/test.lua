require "luatoxml.luatoxml"
--[[

<coverage line-rate="0.9" branch-rate="0.75" version="1.9" timestamp="1187350905008">
	<sources>
		<source>C:/local/mvn-coverage-example/src/main/java</source>
		<source>--source</source>
	</sources>
	<packages>
		<package name="" line-rate="1.0" branch-rate="1.0" complexity="1.0">
			<classes>
				<class name="Main" filename="Main.java" line-rate="1.0" branch-rate="1.0" complexity="1.0">
					<methods>
						<method name="&lt;init>" signature="()V" line-rate="1.0" branch-rate="1.0">
							<lines>
								<line number="10" hits="3" branch="false"/>
							</lines>
						</method>
						<method name="doSearch" signature="()V" line-rate="1.0" branch-rate="1.0">
							<lines>
								<line number="23" hits="3" branch="false"/>
								<line number="25" hits="3" branch="false"/>
								<line number="26" hits="3" branch="false"/>
								<line number="28" hits="3" branch="false"/>
								<line number="29" hits="3" branch="false"/>
								<line number="30" hits="3" branch="false"/>
							</lines>
						</method>
						<method name="main" signature="([Ljava/lang/String;)V" line-rate="1.0" branch-rate="1.0">
							<lines>
								<line number="16" hits="3" branch="false"/>
								<line number="17" hits="3" branch="false"/>
								<line number="18" hits="3" branch="false"/>
								<line number="19" hits="3" branch="false"/>
							</lines>
						</method>
					</methods>
					<lines>
						<line number="10" hits="3" branch="false"/>
						<line number="16" hits="3" branch="false"/>
						<line number="17" hits="3" branch="false"/>
						<line number="18" hits="3" branch="false"/>
						<line number="19" hits="3" branch="false"/>
						<line number="23" hits="3" branch="false"/>
						<line number="25" hits="3" branch="false"/>
						<line number="26" hits="3" branch="false"/>
						<line number="28" hits="3" branch="false"/>
						<line number="29" hits="3" branch="false"/>
						<line number="30" hits="3" branch="false"/>
					</lines>
				</class>
			</classes>
		</package>
--]]

local test = {
	coverage = {
		["line-rate"] = 0.9,
		["branch-rate"] = 0.75,
		version = 1.9,
		timestamp = 1187350905008,
		sources = {
			{ source = "C:/local/mvn-coverage-example/src/main/java" }
		},
		packages = {
			{
				package = {
					name = "",
					["line-rate"] = 1.0,
					["branch-rate"] = 1.0,
					complexity = 1.0,
					classes = {
						{
							class = {
								name = "Main",
								filename = "Main.java",
								["line-rate"] = 1.0,
								["branch-rate"] = 1.0,
								complexity = 1.0,
								methods = {
									{
										method = {
											name = "&lt;init>",
											signature = "()V",
											["line-rate"] = 1.0,
											["branch-rate"] = 1.0,
											lines = {
												{
													line = {
														number = 10,
														hits = 3,
														branch = false
													}
												}
											}											
										},
										method = {
											name = "doSearch",
											signature = "()V",
											["line-rate"] = 1.0,
											["branch-rate"] = 1.0,
											lines = {
												{ line = { number = 23, hits = 3, branch = false } },
												{ line = { number = 25, hits = 3, branch = false } },
												{ line = { number = 26, hits = 3, branch = false } },
												{ line = { number = 28, hits = 3, branch = false } },
												{ line = { number = 29, hits = 3, branch = false } },
												{ line = { number = 30, hits = 3, branch = false } }
											}
										}
									}
								}							
							}
						}
					}
				}
			},
			{
				package = { }
			},
			
		}
	}
}

luatoxml.toxml(test)