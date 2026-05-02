import { world } from "@minecraft/server";

world.afterEvents.worldInitialize.subscribe(() => {
    world.sendMessage("KyungbokAI 애드온이 로드되었습니다!");
});
