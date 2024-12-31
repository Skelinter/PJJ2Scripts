--[=[
esp by @Skelinter
gui2lua by @uniquadev
]=]
local items = workspace.Items
local G2L = {};

function isChild(parent, className)
	for i, object in pairs(parent:GetChildren()) do
		if object:IsA(className) then
			return true
		end	
	end
	return false
end

function espItems()
	for i, item in pairs(items:GetChildren()) do
		if isChild(item, "BillboardGui") == false then
			local clonedBillBoard = G2L["2"]:Clone()
			clonedBillBoard["TextBox"]["Text"] = item.Name
			clonedBillBoard.Parent = item
		end
	end
end

-- Workspace.Tool.ScreenGui.BillboardGui
G2L["2"] = Instance.new("BillboardGui", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["LightInfluence"] = 1;
G2L["2"]["AlwaysOnTop"] = true;
G2L["2"]["AutoLocalize"] = false;
G2L["2"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- Workspace.Tool.ScreenGui.BillboardGui.TextBox
G2L["3"] = Instance.new("TextBox", G2L["2"]);
G2L["3"]["TextColor3"] = Color3.fromRGB(255, 0, 0);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["TextEditable"] = false;
G2L["3"]["TextSize"] = 14;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3"]["Size"] = UDim2.new(0, 200, 0, 50);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[placeholder]];
G2L["3"]["BackgroundTransparency"] = 1;

espItems()
items.ChildAdded:Connect(espItems)